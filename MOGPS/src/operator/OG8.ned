//
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

package mogps.operator;
import mogps.operator.Node;

import mogps.operator.Link;

//
// Generated network with random topology (8 nodes, 7 edges, seed=100).
//
network OG8 {
    submodules:
        node0 : Node;
        node1 : Node;
        node2 : Node;
        node3 : Node;
        node4 : Node;
        node5 : Node;
        node6 : Node;
        node7 : Node;
    connections:
        node0.gate++ <--> Link <--> node1.gate++;
        node0.gate++ <--> Link <--> node6.gate++;
        node1.gate++ <--> Link <--> node2.gate++;
        node1.gate++ <--> Link <--> node3.gate++;
        node1.gate++ <--> Link <--> node5.gate++;
        node2.gate++ <--> Link <--> node4.gate++;
        node3.gate++ <--> Link <--> node7.gate++;
}
