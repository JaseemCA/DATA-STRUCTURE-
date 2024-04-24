class Solution {
  List<int> resultArray(List<int> nums) {
    List <int> store1=[nums[0]];
    List<int> store2=[nums[1]];
    for(int i=2;i<nums.length;i++){
        if(store1.last > store2.last){
            store1.add(nums[i]);
          print(store1);
        }else{

            store2.add(nums[i]);
            print(store2);
        }

    }
    store1.addAll(store2);
    return store1;
 
  }
}
void main(){
  
  Solution values=Solution();
  
  
  List<int> nums=[12,2,34,345];
  List<int> resu=values.resultArray(nums);
  print(resu);
  
}