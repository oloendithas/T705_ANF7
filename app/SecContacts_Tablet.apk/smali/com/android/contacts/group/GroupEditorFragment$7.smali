.class Lcom/android/contacts/group/GroupEditorFragment$7;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupEditorFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$7;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 0

    .prologue
    .line 1159
    return-void
.end method

.method public onRingtoneRecommend(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$7;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # invokes: Lcom/android/contacts/group/GroupEditorFragment;->handleRingtonePicked(Landroid/net/Uri;)Z
    invoke-static {v0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->access$700(Lcom/android/contacts/group/GroupEditorFragment;Landroid/net/Uri;)Z

    .line 1155
    return-void
.end method
