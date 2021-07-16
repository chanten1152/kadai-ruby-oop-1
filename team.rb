# クラスの定義
class Team
    # 変数指定
    attr_accessor :name, :win, :lose, :draw
    # インスタンス初期化
    def initialize(team_name, count_win, count_lose, count_draw)
      self.name = team_name
      self.win = count_win
      self.lose = count_lose
      self.draw = count_draw
    end
    
    # 勝率メソッド作成
    def calc_win_rate
       self.win.to_f / (self.win + self.lose)
    end
    
    # 成績メソッド作成
    def show_team_result
        puts "#{self.name}の2020年の成績は#{self.win}勝#{self.lose}敗#{self.draw}分、勝率は#{self.calc_win_rate}です。"
    end
end

# インスタンス生成
team_G = Team.new('Giants', 67, 45, 8)
team_T = Team.new('Tigers', 60, 53, 7)
team_D = Team.new('Dragons', 60, 55, 5)
team_B = Team.new('BayStars', 56, 58, 6)
team_C = Team.new('Carp', 52, 56, 12)
team_S = Team.new('Swallos', 41, 69, 10)

# 勝敗情報の表示
team_G.show_team_result
team_T.show_team_result
team_D.show_team_result
team_B.show_team_result
team_C.show_team_result
team_S.show_team_result
