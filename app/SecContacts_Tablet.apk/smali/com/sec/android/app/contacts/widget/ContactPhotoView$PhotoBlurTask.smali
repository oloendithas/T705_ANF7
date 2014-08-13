.class Lcom/sec/android/app/contacts/widget/ContactPhotoView$PhotoBlurTask;
.super Landroid/os/AsyncTask;
.source "ContactPhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/widget/ContactPhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoBlurTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/sec/android/app/contacts/widget/ContactPhotoView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/widget/ContactPhotoView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$PhotoBlurTask;->this$0:Lcom/sec/android/app/contacts/widget/ContactPhotoView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 321
    iput-object p2, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$PhotoBlurTask;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 322
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$PhotoBlurTask;->this$0:Lcom/sec/android/app/contacts/widget/ContactPhotoView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$PhotoBlurTask;->mDrawable:Landroid/graphics/drawable/Drawable;

    # invokes: Lcom/sec/android/app/contacts/widget/ContactPhotoView;->makeBlurEffectIfNeeded(Landroid/graphics/drawable/Drawable;)I
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->access$000(Lcom/sec/android/app/contacts/widget/ContactPhotoView;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 316
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/widget/ContactPhotoView$PhotoBlurTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 331
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 341
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 342
    return-void

    .line 333
    :pswitch_0
    const-string v0, "ContactPhotoView"

    const-string v1, "MSG_UPDATE_PHOTO"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$PhotoBlurTask;->this$0:Lcom/sec/android/app/contacts/widget/ContactPhotoView;

    # getter for: Lcom/sec/android/app/contacts/widget/ContactPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->access$100(Lcom/sec/android/app/contacts/widget/ContactPhotoView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$PhotoBlurTask;->this$0:Lcom/sec/android/app/contacts/widget/ContactPhotoView;

    # invokes: Lcom/sec/android/app/contacts/widget/ContactPhotoView;->ApplyBlurEffect()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/widget/ContactPhotoView;->access$200(Lcom/sec/android/app/contacts/widget/ContactPhotoView;)V

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 316
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/widget/ContactPhotoView$PhotoBlurTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
