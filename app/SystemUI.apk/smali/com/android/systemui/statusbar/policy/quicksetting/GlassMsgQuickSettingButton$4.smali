.class Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$4;
.super Ljava/lang/Object;
.source "GlassMsgQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->showGuideDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 354
    return-void
.end method
