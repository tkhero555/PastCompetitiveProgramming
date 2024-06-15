=begin ギブアップ〜
# 入力を受け取って二次元配列を作るコード
h, w = gets.chomp.split(" ").map(&:to_i)
t_d_array = []

# 8方向移動を予め用意しておくやり方があるっぽい
di = [-1, -1, -1, 0, 0, 1, 1, 1]
dj = [-1, 0, 1, -1, 1, -1, 0, 1]

h.times do
  t_d_array << gets.chomp.split("")
end
result = []
# 二次元配列から起点となるsを探すコード
h.times do |i|
  w.times do |j|
    if t_d_array[i][j] == "s"
      result << [i, j]

  end
end
# 8方向それぞれに文字列を探していき、snukeが見つかる
# or別の文字列が出てくるornilになるで処理を中断する
# 正解の文字列を発見した場合は、そのチェックした配列番号をresult変数に保存する
=end

# 解答例

H, W = gets.split.map(&:to_i)

T = []
S = "snuke"

di = [-1, -1, -1, 0, 0, 1, 1, 1]
dj = [-1, 0, 1, -1, 1, -1, 0, 1]

H.times do
	T.push(gets.chomp.split(""))
end

(0...H).each do |si|
	(0...W).each do |sj|
		(0..7).each do |k|
			i = si; j = sj	

			(0..5).each do |l|
				break if i<0 || j<0 || i>= H || j>= W
				break if (T[i][j] != S[l])

				if l == 4 then
					i = si; j = sj;
					5.times do
						puts "#{i+1} #{j+1}"
						i += di[k]; j += dj[k]
					end
					return
				end
				i += di[k]; j += dj[k]
			end
		end
	end
end
