# **Coding Style**
## Background
一般文章常使用縮排（Indention），在文字或段落之間留下空白或是換行， 以增加文章易讀性使排版更加整齊。程式語言中的縮排，則是在每行開頭處使用適量的 \\t (tab character)來表示。
而 C-style-indention 則是利用大括號 \{ \} 來決定該使用多少 \\t 表示縮排，此種方法也被廣泛運用在其他程式語言上，如：C/C++, Java。
  
## Description
請寫一個 Lex 程式使程式碼在適當位置做縮排。  
  
## Hint
利用一個計數器以記錄每行該做多少的 tab 縮排。  
  
  
### 參考答案 :  
#### Sample Input:
    int main(){  
    for(int i = 0; i < 10 ; i ++) // need 1 tab  
    { // need 1 tab  
    for(int j = 0 ; j <= i ; j ++) // need 2 tab  
    printf(“*”); // need 2 tab  
    printf(“\n”); // need 2 tab  
    } // need 1 tab  
    } // need 0 tab  
  
#### Sample Output
    int main(){
      for(int i = 0; i < 10 ; i ++) // need 1 tab
      { // need 1 tab
        for(int j = 0 ; j <= i ; j ++) // need 2 tab
        printf(“*”); // need 2 tab
        printf(“\n”); // need 2 tab
      } // need 1 tab
    } // need 0 tab
 
