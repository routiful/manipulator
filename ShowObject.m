global uLINK
vert = uLINK(1).R * uLINK(1).vertex; % rotation
for k = 1:3
vert(k,:) = vert(k,:) + uLINK(1).p(k); % translation
end
newplot
h = patch('faces',uLINK(1).face','vertices',vert','FaceColor',[0.5 0.5 0.5]);
axis equal; view(3); grid on; xlim(AX); ylim(AY); zlim(AZ);
text(0.25, -0.25, 0.8, ['time=',num2str(time(n),'%5.3f')])
drawnow
