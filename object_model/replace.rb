class Array
  def substitute(from, to)
    each_with_index do |e, i|
      self[i] = to if e == from
    end
  end
end

def test_substitute
  book_topics = ['html', 'java', 'css']
  book_topics.substitute('java', 'ruby')
  expected = ['html', 'ruby', 'css']
  assert_equal expected, book_topics
end
