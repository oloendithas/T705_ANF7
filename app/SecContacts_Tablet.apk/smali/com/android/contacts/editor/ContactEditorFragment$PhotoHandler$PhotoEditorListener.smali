.class final Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;
.super Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor$EditorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoEditorListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;


# direct methods
.method private constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)V
    .locals 0

    .prologue
    .line 4205
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;-><init>(Lcom/android/contacts/detail/PhotoSelectionHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;Lcom/android/contacts/editor/ContactEditorFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    .param p2, "x1"    # Lcom/android/contacts/editor/ContactEditorFragment$1;

    .prologue
    .line 4205
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)V

    return-void
.end method


# virtual methods
.method public getCurrentPhotoFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4332
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3300(Lcom/android/contacts/editor/ContactEditorFragment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
    .locals 0
    .param p1, "removedEditor"    # Lcom/android/contacts/editor/Editor;

    .prologue
    .line 4236
    return-void
.end method

.method public onPhotoSelected(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 4322
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-wide v1, v1, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mRawContactId:J

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->setPhoto(JLandroid/graphics/Bitmap;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$4100(Lcom/android/contacts/editor/ContactEditorFragment;JLandroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 4323
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$3500(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setIsChangedNamecardPhoto(I)V

    .line 4325
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    invoke-static {v0, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3202(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .line 4326
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->setPhotoMode(I)V

    .line 4328
    return-void
.end method

.method public onPhotoSelectionDismissed()V
    .locals 0

    .prologue
    .line 4338
    return-void
.end method

.method public onRemovePictureChosen()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 4262
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-static {v4}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$3500(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getIsNamecard()I

    move-result v1

    .line 4263
    .local v1, "namecardDataId":I
    if-lez v1, :cond_0

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-static {v4}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$3500(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getIsChangedNamecardPhoto()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4264
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "display_photo"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    int-to-long v5, v1

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 4268
    .local v0, "displayPhotoUri":Landroid/net/Uri;
    new-instance v4, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener$1;

    invoke-direct {v4, p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;Landroid/net/Uri;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v3, [Ljava/lang/Void;

    invoke-virtual {v4, v5, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4317
    .end local v0    # "displayPhotoUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 4301
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-static {v4}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$3500(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setBitmapAnimation(Landroid/graphics/Bitmap;)V

    .line 4304
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v3, v3, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090408

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4305
    .local v2, "photo_thumbnail_view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 4306
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4311
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v3, v3, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$4200(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-wide v4, v4, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mRawContactId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4312
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/PhotoSelectionHandler;->setPhotoMode(I)V

    .line 4313
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$3500(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setIsChangedNamecardPhoto(I)V

    goto :goto_0
.end method

.method public onRequest(I)V
    .locals 3
    .param p1, "request"    # I

    .prologue
    .line 4210
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v1, v1, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3400(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4230
    :cond_0
    :goto_0
    return-void

    .line 4212
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 4213
    const/4 v0, 0x0

    .line 4214
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v1, v1, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3200(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    move-result-object v1

    if-nez v1, :cond_2

    .line 4215
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$3500(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->hasSetPhoto()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4216
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$3500(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getIsNamecard()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$3500(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getIsChangedNamecardPhoto()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4217
    const/16 v0, 0xc

    .line 4224
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v1, v1, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    invoke-static {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3202(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .line 4225
    if-lez v0, :cond_3

    .line 4226
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v1, v1, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3200(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->setPhotoMode(I)V

    .line 4228
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$3500(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/PhotoSelectionHandler;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 4218
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v1, v1, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->hasMoreThanOnePhoto()Z
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3600(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4219
    const/16 v0, 0xf

    goto :goto_1

    .line 4221
    :cond_5
    const/16 v0, 0xe

    goto :goto_1
.end method

.method public onUseAsPrimaryChosen()V
    .locals 6

    .prologue
    .line 4244
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v5, v5, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3700(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 4245
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 4246
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v5, v5, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3700(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4247
    .local v0, "childView":Landroid/view/View;
    instance-of v5, v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-eqz v5, :cond_0

    move-object v2, v0

    .line 4248
    check-cast v2, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 4250
    .local v2, "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-virtual {v2}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v4

    .line 4251
    .local v4, "photoEditor":Lcom/android/contacts/editor/PhotoEditorView;
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-static {v5}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$3500(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v5

    if-ne v2, v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v4, v5}, Lcom/android/contacts/editor/PhotoEditorView;->setSuperPrimary(Z)V

    .line 4245
    .end local v2    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v4    # "photoEditor":Lcom/android/contacts/editor/PhotoEditorView;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4251
    .restart local v2    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    .restart local v4    # "photoEditor":Lcom/android/contacts/editor/PhotoEditorView;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 4255
    .end local v0    # "childView":Landroid/view/View;
    .end local v2    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v4    # "photoEditor":Lcom/android/contacts/editor/PhotoEditorView;
    :cond_2
    return-void
.end method
