defprotocol Witchcraft.Applicative do
  # @doc """
  # """

  @type pure(a) :: {a}

  @fallback_to_any true

  # Lift
  @spec pure(any) :: pure(any)
  def pure(member)

  # Sequential application
  @spec apply((any -> any), any) :: any
  def apply(collection, function)

  # def identity(id, elem, applic) do
  #   applic(pure(id), elem) == elem
  # end

  # def homomorphism(elem, func) do
  #   applic(pure(f), pure(elem)) == pure(f(pure(elem)))
  # end

  # def interchange(u, y, applic) do
  #   applic(u, pure(y)) == pure(&(y |> &1)) `applic` u
  # end

  # def composition(u, v, w, applic) do
  #   pure &(&2 |> &1) `applic` u `applic` v `applic` w == u `applic` (v `applic` w)
  # end

  # def bonus_law(coll, func) do
  #   fmap(coll, func) == applic(coll, pure(func))
  # end
end
