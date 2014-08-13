.class Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener$1;
.super Landroid/os/AsyncTask;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->onRemovePictureChosen()V
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
.field final synthetic this$2:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

.field final synthetic val$displayPhotoUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 4268
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener$1;->this$2:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener$1;->val$displayPhotoUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 4272
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener$1;->this$2:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$3800(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener$1;->val$displayPhotoUri:Landroid/net/Uri;

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 4274
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4279
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v2

    .line 4275
    :catch_0
    move-exception v0

    .line 4276
    .local v0, "e":Ljava/io/IOException;
    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error getting display photo. Ignoring, as we already have the thumbnail"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4279
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 4268
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 4285
    if-nez p1, :cond_0

    .line 4298
    :goto_0
    return-void

    .line 4288
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener$1;->this$2:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$3900(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSquareNamecardBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4289
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener$1;->this$2:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$3500(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setBitmapAnimation(Landroid/graphics/Bitmap;)V

    .line 4291
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener$1;->this$2:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$4000(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSquareNamecardFilePath(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    .line 4292
    .local v1, "squarePhotoPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener$1;->this$2:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3302(Lcom/android/contacts/editor/ContactEditorFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 4293
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener$1;->this$2:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener$1;->this$2:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

    iget-object v3, v3, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-wide v3, v3, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mRawContactId:J

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->setPhoto(JLandroid/graphics/Bitmap;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/contacts/editor/ContactEditorFragment;->access$4100(Lcom/android/contacts/editor/ContactEditorFragment;JLandroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 4294
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener$1;->this$2:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$3500(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setIsChangedNamecardPhoto(I)V

    .line 4296
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener$1;->this$2:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    invoke-static {v2, v6}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3202(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .line 4297
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener$1;->this$2:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/contacts/detail/PhotoSelectionHandler;->setPhotoMode(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4268
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
