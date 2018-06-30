defmodule Cqrs.Router do
  @moduledoc false

  use Commanded.Commands.Router
  alias Cqrs.Declarations.Commands.CreateDeclaration
  alias Cqrs.Declarations.Aggregates.Declaration

  dispatch(CreateDeclaration, to: Declaration, identity: :declaration_id)
end
