.class Lcom/android/contacts/editor/ContactEditorFragment$17;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0

    .prologue
    .line 3673
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$17;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 0

    .prologue
    .line 3681
    return-void
.end method

.method public onRingtoneRecommend(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3676
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$17;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->handleRingtonePicked(Landroid/net/Uri;)Z

    .line 3677
    return-void
.end method
