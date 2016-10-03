# Stacks & Queues: Explain the difference between a stack and a queue. Write a
# Ruby class called Stack and another Ruby class called Queue. Each class should
# have two instance methods `add` and `remove` to add an element to the stack or
# queue or to remove an element from the stack or queue. Make sure that each class
# behaves properly as per definitions of stacks and queues.

1. Stack vs Queue
Stack:
A stack is a last in first out data structure.
For a stack, if I have a list a, b, c, and I add d, it gets tacked on the end,
so I end up with a,b,c,d. If I want to pop an element of the list, I remove the
last element I added, which is d. After a pop, my list is now a,b,c again.

Queue:
A queue is a first in first out data structure.
For a queue, I add new elements in the same way. a,b,c becomes a,b,c,d after
adding d. But, now when I pop, I have to take an element from the front of the
list, so it becomes b,c,d.


class Stack

  def initialize
    @stackArray =[]
  end

  def add(x)
    @stackArray << x
  end

  def remove
    @stackArray.pop
  end


end


class Queue

  def initialize
    queue = Queue.New
    @queue = queue

  end

  def add(x)
    @queue << (x)
  end

  def remove
    @queue.pop
  end

end
