
class NovelService

  def get_all_novels()
    Novel.select('id','book_name','author_id').as_json
  end

end