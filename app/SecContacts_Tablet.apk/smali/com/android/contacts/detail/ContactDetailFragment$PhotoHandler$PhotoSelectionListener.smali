.class final Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;
.super Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoSelectionListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;


# direct methods
.method private constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;)V
    .locals 0

    .prologue
    .line 6826
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;-><init>(Lcom/android/contacts/detail/PhotoSelectionHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;Lcom/android/contacts/detail/ContactDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;
    .param p2, "x1"    # Lcom/android/contacts/detail/ContactDetailFragment$1;

    .prologue
    .line 6826
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;)V

    return-void
.end method


# virtual methods
.method public getCurrentPhotoFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6878
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mCurrentPhotoFile:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$5700(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPhotoSelected(Landroid/graphics/Bitmap;)V
    .locals 23
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 6830
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    invoke-virtual {v3}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getDeltaForAttachingPhotoToContact()Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v4

    .line 6831
    .local v4, "delta":Lcom/android/contacts/model/EntityDeltaList;
    if-nez v4, :cond_0

    .line 6832
    const-string v3, "ContactDetailFragment"

    const-string v5, "no delta"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 6874
    :goto_0
    return-void

    .line 6835
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/contacts/model/EntityDeltaList;->getFirstWritableRawContact(Landroid/content/Context;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v19

    .line 6836
    .local v19, "raw":Lcom/android/contacts/model/EntityDelta;
    if-nez v19, :cond_1

    .line 6837
    const-string v3, "ContactDetailFragment"

    const-string v5, "no writable raw-contact found"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6842
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/ContactsUtils;->getThumbnailSize(Landroid/content/Context;)I

    move-result v21

    .line 6843
    .local v21, "size":I
    if-nez p1, :cond_2

    .line 6844
    const-string v3, "ContactDetailFragment"

    const-string v5, "Empty bitmap. could not create thumbnail."

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6847
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 6848
    .local v20, "scaled":Landroid/graphics/Bitmap;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/util/ContactPhotoUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v17

    .line 6849
    .local v17, "compressed":[B
    if-nez v17, :cond_3

    .line 6850
    const-string v3, "ContactDetailFragment"

    const-string v5, "could not create scaled and compressed Bitmap"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6858
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta;->getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/model/AccountType;

    move-result-object v16

    .line 6859
    .local v16, "account":Lcom/android/contacts/model/AccountType;
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v22

    .line 6861
    .local v22, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez v22, :cond_4

    .line 6862
    const-string v3, "ContactDetailFragment"

    const-string v5, "cannot attach photo to this account type"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6865
    :cond_4
    const-string v3, "data15"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    .line 6866
    const-string v3, "data11"

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 6868
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    invoke-virtual {v3}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getWritableEntityId()J

    move-result-wide v10

    .line 6869
    .local v10, "rawContactId":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    iget-object v5, v5, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mCurrentPhotoFile:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$5700(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 6871
    .local v12, "croppedPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    iget-object v13, v13, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mCustomRingtone:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/contacts/detail/ContactDetailFragment;->access$5400(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    iget-object v14, v14, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mCustomVibrationUri:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2500(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    iget-object v15, v15, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mCustomAlerttone:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2400(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;

    move-result-object v15

    invoke-static/range {v3 .. v15}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/EntityDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    .line 6873
    .local v18, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method public onPhotoSelectionDismissed()V
    .locals 0

    .prologue
    .line 6884
    return-void
.end method
