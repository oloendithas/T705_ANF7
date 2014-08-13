.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$48;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 15473
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$48;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$48;->val$sp:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 3
    .param p1, "arg0"    # Lcom/sec/android/touchwiz/widget/TwCompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 15475
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$48;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$48;->val$sp:Landroid/content/SharedPreferences;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setFTMShowAgainPreference(Landroid/content/SharedPreferences;Ljava/lang/Boolean;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$11500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/content/SharedPreferences;Ljava/lang/Boolean;)V

    .line 15476
    return-void
.end method
