defmodule Cqrs.Application do
  @moduledoc """
  The Cqrs Application Service.

  The cqrs system business domain lives in this application.

  Exposes API to clients such as the `CqrsWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application
  alias Cqrs.Declarations.DeclarationConsumer

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    consumer_group_opts = [
      # setting for the ConsumerGroup
      heartbeat_interval: 1_000,
      # this setting will be forwarded to the GenConsumer
      commit_interval: 1_000
    ]

    gen_consumer_impl = DeclarationConsumer
    consumer_group_name = "declaration_group"
    topic_names = ["declarations"]

    Supervisor.start_link(
      [
        supervisor(Cqrs.Repo, []),
        supervisor(KafkaEx.ConsumerGroup, [
          gen_consumer_impl,
          consumer_group_name,
          topic_names,
          consumer_group_opts
        ])
      ],
      strategy: :one_for_one,
      name: Cqrs.Supervisor
    )
  end
end
