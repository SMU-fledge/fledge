% 사용자로부터 현재 날짜와 시간을 입력 받는다.
year = input('연도 : ');
month = input('월 : ');
day = input('날짜 : ');
hour = input('시간 : ');
hoursAdd = input('추가할 시간 : ');

%시간 더하기
totalHours = hour + hoursAdd;
additionDays = floor(totalHours / 24);
remainingHours = mod(totalHours, 24);

%날짜에 일 수 추가 계산
newDay = day + additionDays;
endofmonth = get_end_of_month(year, month);


while newDay > endofmonth 
    newDay = newDay - endofmonth;
    month = month + 1;
    if month > 12
         month = 1;
         year = year + 1;
    end
    endofmonth = get_end_of_month(year, month);
end

fprintf('계산된 날짜와 시간 : %d년 %d월 %d일 %d시\n', year, month, newDay, remainingHours);



         
