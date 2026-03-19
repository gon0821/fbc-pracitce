require "date"

class BootcampStudent
  def study
    today = Date.today
    if today.saturday? || today.sunday?
      # do nothing
      return
    end

    if self.motivated?
      self.do_practice
      self.write_report
    else
      topics = self.watch_discord
      topics.each do |topic|
        self.comment_to(topic) if self.interested_in?(topic)
      end
    end
  end
  
  # その他のメソッド定義は省略
end

# studyメソッド内で使われているメソッドは次のような意味を持つ。

# motivated? やる気があるときはtrue、なければfalse
# do_practice プラクティスに取り組む
# write_report 日報を書く
# watch_discord Discordを見る。戻り値はDiscordの未読トピックの配列
# interested_in? 引数として渡されたトピックが面白いと思ったらtrue、思わなければfalse
# comment_to 引数として渡されたトピックにコメントを書き込む
