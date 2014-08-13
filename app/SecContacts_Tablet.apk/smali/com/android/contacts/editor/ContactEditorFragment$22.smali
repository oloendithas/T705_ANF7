.class Lcom/android/contacts/editor/ContactEditorFragment$22;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment;->createImageAirListWidgetFromView(Lcom/android/contacts/editor/BaseRawContactEditorView;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;

.field final synthetic val$rawEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/BaseRawContactEditorView;)V
    .locals 0

    .prologue
    .line 4691
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$22;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$22;->val$rawEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;ILjava/lang/Object;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "itemIndex"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 4695
    const/4 v6, -0x1

    if-eq p2, v6, :cond_0

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 4722
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, p3

    .line 4698
    check-cast v4, Landroid/net/Uri;

    .line 4699
    .local v4, "imageUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$22;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1100(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/contacts/util/ContactPhotoUtils;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 4700
    .local v3, "filePath":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 4701
    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "createImageAirListWidgetFromView onItemSelected : filePath is null."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4704
    :cond_2
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 4705
    .local v2, "fileName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$22;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1100(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4706
    .local v0, "croppedPath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 4708
    .local v1, "croppedPhotoUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$22;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$22;->val$rawEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v7}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v7

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J
    invoke-static {v6, v7, v8}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3102(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    .line 4711
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$22;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1100(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/String;

    aput-object v3, v7, v9

    new-array v8, v10, [Ljava/lang/String;

    aput-object v11, v8, v9

    invoke-static {v6, v7, v8, v11}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 4717
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.camera.action.CROP"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4718
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "image/*"

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4720
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$22;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->getPhotoPickSize()I
    invoke-static {v6}, Lcom/android/contacts/editor/ContactEditorFragment;->access$4400(Lcom/android/contacts/editor/ContactEditorFragment;)I

    move-result v6

    invoke-static {v5, v1, v6}, Lcom/android/contacts/util/ContactPhotoUtils;->addGalleryIntentExtras(Landroid/content/Intent;Landroid/net/Uri;I)V

    .line 4721
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$22;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/16 v7, 0xd

    invoke-virtual {v6, v5, v7}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
