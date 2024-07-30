# 答えは出るが処理速度が遅く、クリアにはならなかったコード

require 'benchmark'
# 一旦配列で受け取る
result = Benchmark.realtime do
  n = gets.chomp.to_i
  works = Array.new(n){ gets.to_s.split.map{ |e| e.to_i } }

  # 仕事の始まりから終わりの日までの日付の数字を用意して一つの配列にする
  p works
  work_all_times = []
  works.each do |work_time|
    work_all_times.concat((work_time[0]..work_time[1]).to_a)
  end
  p work_all_times
  # 重複を削除する
  work_all_times = work_all_times.uniq.sort

  # 配列の要素を一つずつ取り出す　取り出した要素に+1ずつしてどこまで続くかをカウントする
  # eachにwhileをネストさせて全件確認してみたが、処理時間がかかりすぎた
  # each_cons()メソッドで2つずつ要素を取り出して連続しているかをチェックしていくことで処理件数を減らす
  count = 1
  max_count = 1

  work_all_times.each_cons(2) do |first_day, second_day|
    if second_day == first_day + 1
      count += 1
    else
      max_count = [max_count, count].max
      count = 1
    end
  end

  # カウント結果を保存しておいて、その中で最大のカウントを結果として出力する
  puts [max_count, count].max
end
puts "処理概要 #{result}s"
