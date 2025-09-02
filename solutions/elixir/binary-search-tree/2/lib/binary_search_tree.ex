defmodule BinarySearchTree do
  @type bst_node :: %{data: any, left: bst_node | nil, right: bst_node | nil}

  @doc """
  Create a new Binary Search Tree with root's value as the given 'data'
  """
  @spec new(any) :: bst_node
  def new(data) do
      %{data: data,left: nil,right: nil}
  end

  @doc """
  Creates and inserts a node with its value as 'data' into the tree.
  """
  @spec insert(bst_node, any) :: bst_node
  def insert(nil ,data) do
      new(data)
  end
  def insert(%{data: root,left: left,right: right}=tree, data) do
       cond do 
         data > root -> %{tree | right: insert(right,data)}
         data <= root -> %{tree | left: insert(left,data)}
         true -> tree
         end
  end

  @doc """
  Traverses the Binary Search Tree in order and returns a list of each node's data.
  """
  @spec in_order(bst_node) :: [any]
  def in_order(tree) do
      
     order(tree,[])
  end

  defp order(nil,list) do
  []

  end

  defp order(tree,list) do
     l1= order(tree.left, list)
      l2=order(tree.right,l1)

       l1 ++ [tree.data] ++ l2
      
  end
end
