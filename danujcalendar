#include <stdio.h>

// Function to check leap year
int isLeap(int year) {
    return ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0);
}

// Function to get number of days in a month
int getDaysInMonth(int month, int year) {
    int daysInMonth[] = {31, (isLeap(year) ? 29 : 28), 31, 30, 31, 30,
                         31, 31, 30, 31, 30, 31};
    return daysInMonth[month - 1];
}

// Function to get the day of the week for 1st of month
int getStartDay(int month, int year) {
    int y = year;
    int m = month;
    if (m < 3) {
        m += 12;
        y--;
    }
    int d = 1; // First day of the month
    int k = y % 100;
    int j = y / 100;
    int dayOfWeek = (d + 13*(m + 1)/5 + k + k/4 + j/4 + 5*j) % 7;
    return (dayOfWeek + 6) % 7; // Convert to 0=Sunday to 6=Saturday
}

int main() {
    int month, year;

    printf("Enter month (1-12): ");
    scanf("%d", &month);
    printf("Enter year: ");
    scanf("%d", &year);

    int days = getDaysInMonth(month, year);
    int startDay = getStartDay(month, year);

    // Print Calendar Header
    printf("\n\t🗓️ Calendar - %02d/%d\n", month, year);
    printf(" Sun Mon Tue Wed Thu Fri Sat\n");

    // Print initial spaces
    for (int i = 0; i < startDay; i++) {
        printf("    ");
    }

    // Print all days
    for (int day = 1; day <= days; day++) {
        printf(" %3d", day);

        if ((day + startDay) % 7 == 0) {
            printf("\n");
        }
    }
    printf("\n");

    return 0;
}
