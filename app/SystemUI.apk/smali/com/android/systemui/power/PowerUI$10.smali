.class Lcom/android/systemui/power/PowerUI$10;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerUI;->showAbnormalChargingWarning(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 1353
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    iput-object v1, v0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    .line 1354
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    iput-object v1, v0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    .line 1355
    return-void
.end method
