import cv2

img = cv2.imread("/home/laichao/cat.png")
res = cv2.resize(img, None, fx=2, fy=2, interpolation=cv2.INTER_CUBIC)

height, width = img.shape[:2]
res = cv2.resize(img, (2 * width, 2 * height), interpolation=cv2.INTER_CUBIC)

cv2.imshow("resize_img", res)
cv2.waitKey(0)