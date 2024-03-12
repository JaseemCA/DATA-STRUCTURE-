// int binarysearrecu(List<int> arr, int knum, int start, int end) {
//   if (start <= end) {
//     int mid = start + (end - start) ~/ 2;
//     if (arr[mid] == knum) {
//       return mid;
//     } else if (knum > arr[mid]) {
//       return binarysearrecu(arr, knum, mid + 1, end);
//     } else {
//       return binarysearrecu(arr, knum, start, mid - 1);
//     }
//   }
//   return -1;
// }

// class sample {
//   int Bineryrecurtion(List<int> array, target) {
//     int start = 0;
//     int end = array.length - 1;
//     array.sort();
//     print(array);

//     if (start < end) {
//       int mid = start + (end - start) ~/ 2;
//       if (array[mid] == target) {
//         return mid;
//       } else if (array[mid] < target) {
//         return Bineryrecurtion(array, target);
//       } else {
//         return Bineryrecurtion(array, target);
//       }
//     }
//     return -1;
//   }
// }

// void main() {
//   sample value = sample();
//   List<int> array = [1, 3, 2, 5, 7, 6, 9, 8];
//   var result = value.Bineryrecurtion(array, 10);
//   print(result);
// }



class Sample {
  int binarySearch(List<int> array, int target, int start, int end) {
    if (start > end) {
      return -1; 
    }

    int middle = start + ((end - start) ~/ 2);
    if (array[middle] == target) {
      return middle; // Target found at index middle
    } else if (array[middle] > target) {
      return binarySearch(array, target, start, middle - 1); // Search left half
    } else {
      return binarySearch(array, target, middle + 1, end); // Search right half
    }
  }
}

void main() {
  Sample sample = Sample();
  List<int> array = [1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 14];
  int target = 5;

  
  int result = sample.binarySearch(array, target, 0, array.length - 1);

  // Print result
  if (result != -1) {
    print("Target $target found at index $result");
  } else {
    print("Target $target not found in the array");
  }
}
