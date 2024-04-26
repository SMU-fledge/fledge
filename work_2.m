% 사용자로부터 현재 날짜를 입력 받는다.
year = input('연도 : ');
month = input('월 : ');
day = input('날짜 : ');

% 날짜의 유효성 검사
while ~is_valid_date(month, day)
    disp('존재하지 않는 날짜입니다. 다시 입력해주세요.');
    year = input('연도 : ');
    month = input('월 : ');
    day = input('날짜 : ');
end

%사용자로부터 현재 시간을 입력 받는다.
hour = input('시간 : ');

% 시간의 유효성 검사
while hour < 0 || hour >= 24
    disp('잘못된 시간입니다. 0부터 23 사이의 값을 입력하세요.');
    hour = input('시간 : ');
end


% 추가할 시간 입력 받기
hoursAdd = input('추가할 시간 : ');

% 시간 더하기
totalHours = hour + hoursAdd;
additionDays = floor(totalHours / 24);
remainingHours = mod(totalHours, 24);

% 날짜에 일 수 추가 계산
days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
newDay = day + additionDays;
while newDay > days_in_month(month)
    newDay = newDay - days_in_month(month);
    month = month + 1;
    if month > 12
        month = 1;
        year = year + 1;
    end
end

while newDay > days_in_month(month) 
    newDay = newDay - days_in_month(month);
    month = month + 1;
    if month > 12
         month = 1;
         year = year + 1;
    end
    end_of_month = get_end_of_month(year, month);
end

fprintf('계산된 날짜와 시간 : %d년 %d월 %d일 %d시\n', year, month, newDay, remainingHours);

 % 입력한 날짜가 유효한지 확인하는 함수
function valid = is_valid_date(month, day)
    days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    if month < 1 || month > 12 || day < 1 || day > days_in_month(month)
        valid = false;
    else
        valid = true;
    end
end