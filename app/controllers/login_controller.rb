class LoginController < ApplicationController
    # def login
    #     #sql を実行し、問題がなかったらリダイレクトする
    #     if Login.where(login_id:params["login_id"],password: params["password"]).count > 0 then
    #         session[:id]="Sano";
    #         redirect_to '/rooms'

    #     else
    #         redirect_to '/login.html'
    #     end
    # end
        # login/loginのリクエストがきたときの処理
    # ユーザーの入力値が正しいかどうか
      # フォームパラメータを取得
    def login
      login_id = params["login_id"];
      password = params["password"];
        # データベースを確認
      @user = Login.where("login_id = ? and password = ?", login_id, password)[0]
      #render json:@user
      if @user
        # 正しい場合はセッションにユーザー情報を格納する
        session[:user] = @user
        # 正しい場合はルーム一覧にリダイレクト
        redirect_to '/rooms'
      else 
        # 正しくない場合はlogin.htmlにリダイレクト
        redirect_to '/login.html'
      end
    end
    def logout
        session[:id]=nil;
        redirect_to '/login.html'
    end
    
end
