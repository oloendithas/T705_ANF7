.class Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$3;
.super Ljava/lang/Object;
.source "RingtoneRecommendationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mListener:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->access$300(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mListener:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->access$300(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;->onCanceled()V

    .line 248
    :cond_0
    return-void
.end method
