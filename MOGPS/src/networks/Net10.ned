//
// 常用ned
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package mogps.networks;
import mogps.networks.node.EdgeOperatorNode;

import mogps.networks.Link;
import mogps.operator.EventStorage;

//
// Generated network with random topology (10 nodes, 16 edges, seed=100).
//
network Net10
{
    parameters:
        int nodeNum = 10;//节点数量 出入度为3
    @display("bgb=396,217");
    submodules:
        node[10]: EdgeOperatorNode {//定义节点类型
            Naddress = index;
            capacity = 5;
            NdestAddress = "1 9";
        }
		eventStorage: EventStorage{// 里面定义了部署逻辑
            size = nodeNum;
        	address = nodeNum;
        	destAddresses = "1 9";
        }
    connections:
        node[0].g++ <--> Link <--> node[1].g++;
        node[0].g++ <--> Link <--> node[5].g++;
        node[0].g++ <--> Link <--> node[6].g++;
        node[1].g++ <--> Link <--> node[2].g++;
        node[1].g++ <--> Link <--> node[3].g++;
        node[1].g++ <--> Link <--> node[5].g++;
        node[2].g++ <--> Link <--> node[4].g++;
        node[2].g++ <--> Link <--> node[7].g++;
        node[2].g++ <--> Link <--> node[8].g++;
        node[3].g++ <--> Link <--> node[7].g++;
        node[4].g++ <--> Link <--> node[7].g++;
        node[4].g++ <--> Link <--> node[8].g++;
        node[5].g++ <--> Link <--> node[6].g++;
        node[5].g++ <--> Link <--> node[9].g++;
        node[7].g++ <--> Link <--> node[9].g++;
        for i=0..9 { 
        	eventStorage.gate[i]  <--> node[i].es;
           
        }
}
