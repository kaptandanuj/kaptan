#include <stdio.h>


int main(){
    char grade; 
    int marks;
    printf("Enter your marks");
    scanf("%d" , &marks);
    
    if(marks<=100 && marks >=90){
    grade= 'A';
    
    printf("YOUR GRADE IS A");
       
       }
       
    else if(marks<90 && marks>=80){
    grade= 'B';
    
    
        printf("YOUR GRADE IS B");
    }
      
    else if(marks<80 && marks>=70){
    grade= 'C';
    
        printf("YOUR GRADE IS C");
    
    }
    
    else if(marks<70 && marks>=60){
    grade= 'D';
    
        printf("YOUR GRADE IS D");
    }
    
    
    else {
     printf("sorry you're not eligible");
     
     }
     
     
     return 0;
     
     }
