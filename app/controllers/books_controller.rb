class BooksController < ApplicationController
  def new
    # TODO URL入力画面の体裁を整える
    # TODO 複数URLに対応する
  end

  def create
    # TODO 結果画面の体裁を整える
    # TODO 失敗したときの例外処理を追加する
    # TODO URL(target_url)にバリデーションをかける
    Kindle::Mail2MyKindle.send(current_user.email, params[:target_url])
    @result = "Send " +  params[:target_url] + " to " + current_user.email
  end
end
