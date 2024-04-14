# represents the full list
class LinkedList
  def append(value)
    # add new node containing value to the end of the list
  end

  def prepend(value)
    # add new node containing value to the start of the list
  end

  def size
    # returns the total number of nodes in the list
  end

  def head
    # returns the first node in the list
  end

  def tail
    # returns the last node in the list
  end

  def at(index)
    # returns the node at the given index
  end

  def pop
    # removes the last eleent from the list
  end

  def contains?(value)
    # returns true if the passed in value is in the list and otherwise returns false
  end

  def find(value)
    # returns the index of the node containing value, or nil if not found
  end

  def to_s
    # represent LinkedList objects as strings: ( value ) -> ( value ) -> ( value ) -> nil
  end
end

# represents each node of the list
class Node
  def value
  end

  def next_node
  end
end