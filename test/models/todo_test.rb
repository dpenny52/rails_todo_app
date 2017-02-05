require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  test "test new todo saves properly" do
    todo = Todo.new(title: "hello")
    assert todo.save
  end

  test "get a todo works" do
    todo = Todo.find(2)
    assert todo.title == "OH MY GAWD"
    assert_not todo.completed
  end

  test "get missing todo raises exception" do
    assert_raises(Exception) {
      todo = Todo.find(3)
    }
  end

  test "save todo without title raises exception" do
    todo = Todo.new()
    assert_raises(Exception) {
      todo.save
    }
  end
end
