# defmodule Cqrs.Declarations.Handlers.DeclarationCommandHandler do
#   @behaviour Commanded.Commands.Handler

#   alias Cqrs.Declarations.Aggregates.Declaration
#   alias Cqrs.Declarations.Commands.CreateDeclaration

#   def handle(%Declaration{} = declaration, %CreateDeclaration{declaration_id: declaration_id} = create_declaration) do
#     # assign a unique URL slug from the challenge name
#     # {:ok, url_slug} = UniqueSlugger.slugify(Challenge.slug_source, challenge_uuid, name)

#     declaration
#     |> Challenge.create_challenge(%CreateChallenge{create_challenge | url_slug: url_slug})
#   end

#   def handle(%Challenge{} = challenge, %StartChallenge{} = start_challenge) do
#     challenge
#     |> Challenge.start_challenge(start_challenge)
#   end
# end
