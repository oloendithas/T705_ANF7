.class Lcom/android/contacts/quickcontact/QuickContactActivity$15;
.super Landroid/os/AsyncTask;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->bindPhotoData(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

.field final synthetic val$displayPhotoUri:Landroid/net/Uri;

.field final synthetic val$photoView:Lcom/sec/android/app/contacts/widget/ContactPhotoView;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/net/Uri;Lcom/sec/android/app/contacts/widget/ContactPhotoView;)V
    .locals 0

    .prologue
    .line 1613
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->val$displayPhotoUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->val$photoView:Lcom/sec/android/app/contacts/widget/ContactPhotoView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1617
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->val$displayPhotoUri:Landroid/net/Uri;

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 1619
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1624
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v2

    .line 1620
    :catch_0
    move-exception v0

    .line 1621
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "QuickContact"

    const-string v3, "Error getting display photo. Ignoring, as we already have the thumbnail"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1624
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1613
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1630
    if-nez p1, :cond_0

    .line 1633
    :goto_0
    return-void

    .line 1632
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->val$photoView:Lcom/sec/android/app/contacts/widget/ContactPhotoView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1613
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
