.class final Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
.super Lcom/android/contacts/detail/PhotoSelectionHandler;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;
    }
.end annotation


# instance fields
.field private final mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

.field private mPhotoActionPopUp:Landroid/app/AlertDialog;

.field private final mPhotoEditorListener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

.field final mRawContactId:J

.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/content/Context;Lcom/android/contacts/editor/BaseRawContactEditorView;ILcom/android/contacts/model/EntityDeltaList;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "editor"    # Lcom/android/contacts/editor/BaseRawContactEditorView;
    .param p4, "photoMode"    # I
    .param p5, "state"    # Lcom/android/contacts/model/EntityDeltaList;

    .prologue
    .line 4144
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    .line 4145
    invoke-virtual {p3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/detail/PhotoSelectionHandler;-><init>(Landroid/content/Context;Landroid/view/View;IZLcom/android/contacts/model/EntityDeltaList;)V

    .line 4146
    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 4147
    invoke-virtual {p3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mRawContactId:J

    .line 4148
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;Lcom/android/contacts/editor/ContactEditorFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mPhotoEditorListener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    .line 4149
    return-void
.end method

.method static synthetic access$3500(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .prologue
    .line 4136
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .prologue
    .line 4136
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .prologue
    .line 4136
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .prologue
    .line 4136
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
    .locals 1

    .prologue
    .line 4153
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mPhotoEditorListener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    return-object v0
.end method

.method protected startAvatarActivity(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "photoFile"    # Ljava/lang/String;

    .prologue
    .line 4198
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v1

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J
    invoke-static {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3102(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    .line 4199
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    invoke-static {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3202(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .line 4200
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v1, 0x4

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I
    invoke-static {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2702(Lcom/android/contacts/editor/ContactEditorFragment;I)I

    .line 4201
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3302(Lcom/android/contacts/editor/ContactEditorFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 4202
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4203
    return-void
.end method

.method public startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "photoFile"    # Ljava/lang/String;

    .prologue
    .line 4159
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 4160
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4175
    :cond_0
    :goto_0
    return-void

    .line 4164
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v3

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J
    invoke-static {v2, v3, v4}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3102(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    .line 4165
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    invoke-static {v2, p0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3202(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .line 4166
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v3, 0x4

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I
    invoke-static {v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2702(Lcom/android/contacts/editor/ContactEditorFragment;I)I

    .line 4167
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/lang/String;
    invoke-static {v2, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3302(Lcom/android/contacts/editor/ContactEditorFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 4169
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v2, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4170
    :catch_0
    move-exception v1

    .line 4171
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e010f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 4173
    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected startSMemoActivity(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 4189
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v1

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J
    invoke-static {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3102(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    .line 4190
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    invoke-static {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3202(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .line 4191
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v1, 0x4

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I
    invoke-static {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2702(Lcom/android/contacts/editor/ContactEditorFragment;I)I

    .line 4192
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4193
    return-void
.end method

.method protected startSNoteActivity(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 4180
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v1

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J
    invoke-static {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3102(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    .line 4181
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    invoke-static {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3202(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .line 4182
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v1, 0x4

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I
    invoke-static {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2702(Lcom/android/contacts/editor/ContactEditorFragment;I)I

    .line 4183
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4184
    return-void
.end method
