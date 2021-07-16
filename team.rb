# クラスの定義
class Team
    # 変数指定
    attr_accessor :name, :win, :lose, :draw
    # インスタンス初期化
    def initialize(teamName, countWin, countLose, countDraw)
      self.name = teamName
      self.win = countWin
      self.lose = countLose
      self.draw = countDraw
    end
    
    # 勝率メソッド作成
    def calc_win_rate
       self.win.to_f / (self.win + self.lose)
    end
    
    # 成績メソッド作成
    def show_team_result(teamName)
        puts "#{self.name}の2020年の成績は#{self.win}勝#{self.lose}敗#{self.draw}分、勝率は#{self.calc_win_rate}です。"
    end
end

# インスタンス生成
Team_G = Team.new('Giants', 67, 45, 8)
Team_T = Team.new('Tigers', 60, 53, 7)
Team_D = Team.new('Dragons', 60, 55, 5)
Team_B = Team.new('BayStars', 56, 58, 6)
Team_C = Team.new('Carp', 52, 56, 12)
Team_S = Team.new('Swallos', 41, 69, 10)

# 勝敗情報の表示
Team_G.show_team_result('')
Team_T.show_team_result('')
Team_D.show_team_result('')
Team_B.show_team_result('')
Team_C.show_team_result('')
Team_S.show_team_result('')
