% Years taken into consideration for the projection
years = 50;

% Creation of three zero row vectors based on loggerhead turtle's life stages
hatchling = zeros(1, years+1);
youth = zeros(1,years+1);
adult = zeros(1, years+1);

% Initialize the defined row vectors with initial values
hatchling(1) = 1445570;
youth (1) = 5536790;
adult(1) = 17640;

%For loop to predict calculate the future projection of each stage upto the
%Number of years entered by the user
for i = 1:years
    hatchling(i+1) = (77.4*adult(i));
    youth(i+1) = (1*hatchling(i)) + (0.769*youth(i));
    adult(i+1) = (0.000434*youth(i)) + (0.809*adult(i));
end

%Plotting the predicted evolution of each stages on single axis
plot(0:years, hatchling, 0:years, youth,'--', 0:years, adult,':')
