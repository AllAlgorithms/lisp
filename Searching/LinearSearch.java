import java.util.*;
import java.lang.*;

class LinearSearch{
    public static void main(String[] args){
        
        Scanner sc= new Scanner(System.in);
        System.out.println("Enter the size of the array :");
        int e=sc.nextInt();
        int[] arr=new int[e];
        //taking array from user side
        for(int i=0; i<e;i++){
            System.out.println("Enter"+(i+1)+ "Element:");
            arr[i]=sc.nextInt();
        }
        System.out.println("Enter the element you want to find :");
        int a=sc.nextInt();
        int count=0;
        //searching the element in the array
        for(int j=0;j<e;j++){
            if(arr[j]==a){
                count++;
                break;
            }
        }
        //if found the element then print element found otherwise element not found
        if(count==1){
            System.out.println("element found");
        }else{
            System.out.println("element not found");
        }
    }
}