.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$50;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->showOrangeFTMDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field final synthetic val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/content/SharedPreferences;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    .prologue
    .line 15486
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$50;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$50;->val$sp:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$50;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 15488
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$50;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mFTMPopupShowDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$11602(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 15489
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$50;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$50;->val$sp:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$50;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setFTMShowAgainPreference(Landroid/content/SharedPreferences;Ljava/lang/Boolean;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$11500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/content/SharedPreferences;Ljava/lang/Boolean;)V

    .line 15490
    return-void
.end method
