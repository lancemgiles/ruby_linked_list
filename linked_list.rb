# represents the full list
class LinkedList
  attr_accessor :list, :nodes
  def initialize
    @list = []
    @nodes = 0
  end

  def append(value)
    # add new node containing value to the end of the list
    @list << Node.new(value)
    @nodes += 1
  end

  def prepend(value)
    # add new node containing value to the start of the list
    @list.unshift(Node.new(value))
    @nodes += 1
  end

  def size
    # returns the total number of nodes in the list
    @nodes
  end

  def head
    # returns the first node in the list
    @list[0]
  end

  def tail
    # returns the last node in the list
    @list[-1]
  end

  def at(index)
    # returns the node at the given index
    @list[index]
  end

  def pop
    # removes the last eleent from the list
    @list.pop
    @nodes -= 1
  end

  def contains?(val)
    # returns true if the passed in value is in the list and otherwise returns false
    @list.any? { |node| node.value == val }
  end

  def find(val)
    # returns the index of the node containing value, or nil if not found
    @list.find_index { |node| node.value == val }
  end

  def to_s
    # represent LinkedList objects as strings: ( value ) -> ( value ) -> ( value ) -> nil
    @list.each do |node|
      print "( " + node.value + " ) -> "
    end
  end
end

# represents each node of the list
class Node
  attr_accessor :value, :pos

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

list = LinkedList.new
node1 = list.append('test')
node2 = list.append('test2')
node3 = list.prepend('test3')
puts "list #{list}"
p list.find('test2')