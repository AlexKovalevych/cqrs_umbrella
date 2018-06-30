defmodule Cqrs.Declarations.Commands.CreateDeclaration do
  @moduledoc false

  defstruct declaration_id: "",
            status: "",
            declaration_request_id: "",
            area: "",
            employee_id: "",
            declaration_number: ""
end
