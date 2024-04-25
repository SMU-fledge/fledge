function end_of_month = get_end_of_month(year,month)
    days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

    %February(윤년계산이긴 한데..)
    if month == 2
        if mod(year,4) == 0
            if mod(year, 100)==0
                if mod(year,400) == 0
                    days_in_month(month) = 29;
                end
            else
                days_in_month(month) = 29;
            end
        end
    end

    end_of_month = days_in_month(month);
end
