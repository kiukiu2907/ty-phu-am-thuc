# Tỷ Phú Ẩm Thực

Landing page giới thiệu boardgame **Tỷ Phú Ẩm Thực** — boardgame ẩm thực miền Tây Nam Bộ.
2–5 người chơi · 15–45 phút mỗi ván.

- `bat-landing-page.html` — **file gốc, sửa ở đây**
- `index.html` — bản sao để GitHub Pages phục vụ ở URL gốc (chạy `sync-index.ps1` sau mỗi lần sửa)
- `assets/` — toàn bộ hình ảnh (logo, nhân vật, hộp sản phẩm, món ăn…)

---

## Đưa trang lên mạng bằng GitHub Pages

### Cách A — không cần cài gì (kéo–thả trên web)

1. Vào <https://github.com/new>, đặt **Repository name** là `ty-phu-am-thuc`, chọn **Public**, bấm **Create repository**.
2. Ở màn hình repo trống, bấm **uploading an existing file**.
3. Kéo–thả **toàn bộ nội dung** thư mục này vào (gồm cả thư mục `assets`), bấm **Commit changes**.
4. Vào **Settings → Pages**. Mục *Source* chọn **Deploy from a branch**, Branch = `main`, thư mục = `/ (root)`, bấm **Save**.
5. Đợi 1–2 phút, trang sẽ chạy tại:
   `https://<tên-tài-khoản-github>.github.io/ty-phu-am-thuc/`

### Cách B — dùng dòng lệnh (cần cài Git)

Cài Git trước: <https://git-scm.com/download/win>

```powershell
cd "d:\Bao\Newne\TyPhu_AmThuc2\TyPhu_AmThuc2"
.\sync-index.ps1

git init -b main
git add .
git commit -m "Trang gioi thieu Ty Phu Am Thuc"
git remote add origin https://github.com/<tên-tài-khoản>/ty-phu-am-thuc.git
git push -u origin main
```

Sau đó vẫn phải vào **Settings → Pages** bật Deploy from a branch → `main` → `/ (root)` như bước 4 ở Cách A.

### Lần cập nhật sau

```powershell
.\sync-index.ps1
git add .
git commit -m "Cap nhat noi dung"
git push
```

---

## Để Google tìm thấy trang

GitHub Pages chỉ đưa trang lên mạng; Google cần thêm vài ngày để tự thu thập. Muốn nhanh hơn:

1. Vào <https://search.google.com/search-console>, thêm tài sản kiểu **URL prefix** với đúng địa chỉ GitHub Pages ở trên.
2. Xác minh quyền sở hữu (chọn cách **HTML tag** — dán thẻ `<meta>` mà Google đưa vào ngay dưới `<title>` trong `bat-landing-page.html`, chạy lại `sync-index.ps1`, rồi push).
3. Dán URL vào ô **URL Inspection** ở đầu trang → bấm **Request indexing**.

Trang đã có sẵn `<title>`, `description`, thẻ Open Graph và `sitemap.xml` để Google đọc.
Sau khi biết địa chỉ thật, mở `sitemap.xml` và `robots.txt` thay `<URL-TRANG-CUA-BAN>` bằng địa chỉ đó.
