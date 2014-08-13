.class Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$5;
.super Ljava/lang/Object;
.source "RingtoneRecommendationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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
    .line 252
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$5;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$5;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->access$100(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 256
    return-void
.end method
