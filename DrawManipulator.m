clf;
global uLINK % Refer global variable uLINK   
             
for i=1:8
    tmp = uLINK(2).p + uLINK(2).R * uLINK(2).joint_vertex(i,:)';
    uLINK(2).joint_vertex(i,:) = tmp';
    tmp = uLINK(2).p + uLINK(2).R * uLINK(2).link_vertex(i,:)';
    uLINK(2).link_vertex(i,:) = tmp';
    
    tmp = uLINK(3).p + uLINK(3).R * uLINK(3).joint_vertex(i,:)';
    uLINK(3).joint_vertex(i,:) = tmp';
    tmp = uLINK(3).p + uLINK(3).R * uLINK(3).link_vertex(i,:)';
    uLINK(3).link_vertex(i,:) = tmp';
    
    tmp = uLINK(4).p + uLINK(4).R * uLINK(4).joint_vertex(i,:)';
    uLINK(4).joint_vertex(i,:) = tmp';
    tmp = uLINK(4).p + uLINK(4).R * uLINK(4).link_vertex(i,:)';
    uLINK(4).link_vertex(i,:) = tmp';
end   

patch('Vertices', uLINK(2).joint_vertex, 'faces', uLINK(2).face, 'Facecolor', [0.8 1 0.8]);
patch('Vertices', uLINK(2).link_vertex,  'faces', uLINK(2).face, 'Facecolor', [1 1 1]);
patch('Vertices', uLINK(3).joint_vertex, 'faces', uLINK(3).face, 'Facecolor', [0.8 1 0.8]);
patch('Vertices', uLINK(3).link_vertex,  'faces', uLINK(3).face, 'Facecolor', [1 1 1]);
patch('Vertices', uLINK(4).joint_vertex, 'faces', uLINK(4).face, 'Facecolor', [0.8 1 0.8]);
patch('Vertices', uLINK(4).link_vertex,  'faces', uLINK(4).face, 'Facecolor', [1 1 1]);

axis([-13 13 -13 13 0 13]);
grid on;
set(gca, 'XTick',(-13:2:13));
set(gca, 'YTick',(-13:2:13));
set(gca, 'ZTick',(  0:2:13));
view(3)