//
//  200. 岛屿数量.swift
//  leetcode
//
//  Created by zrz on 2020/7/19.
//  Copyright © 2020 zrz. All rights reserved.
//

import Foundation

class Solution {

    var gridMian:[[Character]] = [[]]
    func numIslands(_ grid: [[Character]]) -> Int {
        if grid.count == 0 {
            return 0;
        }
        if grid[0].count == 0 {
            return 0;
        }
        
        gridMian = grid;
        var result = 0;
        
        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if(gridMian[i][j] == "1") {
                    result+=1;
                    self.checkLands( i, j);
                }
            }
        }
        
        return result;
    }

    func checkLands(_ i:Int,_ j:Int) {
        
        if i<0 || i >= gridMian.count || j<0 || j >= gridMian[0].count || gridMian[i][j] == "0" {
            return;
        }
        gridMian[i][j] = "0";
        self.checkLands( i+1, j);
        self.checkLands( i, j+1);
        self.checkLands( i, j-1);
        self.checkLands( i-1, j);
    }

}
