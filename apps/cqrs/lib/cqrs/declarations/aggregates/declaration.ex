defmodule Cqrs.Declarations.Aggregates.Declaration do
  @moduledoc false

  alias Cqrs.Declarations.Commands.CreateDeclaration
  alias Cqrs.Declarations.Events.DeclarationCreated

  defstruct area: nil, count: 0

  @doc """
  Create a new declaration
  """
  # def creater_declaration(declaration, create_challenge)

  # def create_challenge(%__MODULE__{challenge_state: nil}, %CreateChallenge{} = create_challenge) do
  #   %ChallengeCreated{
  #     challenge_uuid: create_challenge.challenge_uuid,
  #     name: create_challenge.name,
  #     description: create_challenge.description,
  #     # ...
  #   }
  # end

  # def create_challenge(%Challenge{}, %CreateChallenge{}), do: {:error, :challenge_already_created}

  # public command API
  def execute(%__MODULE__{count: 0}, %CreateDeclaration{area: area}) do
    %DeclarationCreated{area: area}
  end

  # state mutators
  def apply(%__MODULE__{} = declaration, %DeclarationCreated{}) do
    %__MODULE__{declaration | count: declaration.count + 1}
  end
end
