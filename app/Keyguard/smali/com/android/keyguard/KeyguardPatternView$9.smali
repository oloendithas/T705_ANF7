.class Lcom/android/keyguard/KeyguardPatternView$9;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;)V
    .registers 2

    .prologue
    .line 887
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 890
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_42

    .line 904
    :goto_9
    return-void

    .line 892
    :pswitch_a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardPatternView;->access$400(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$OneHandMode;Z)V

    .line 893
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # setter for: Lcom/android/keyguard/KeyguardPatternView;->mLeftPressed:Z
    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardPatternView;->access$502(Lcom/android/keyguard/KeyguardPatternView;Z)Z

    .line 894
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3600(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_operation_left_is_pressed"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_9

    .line 897
    :pswitch_26
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardPatternView;->access$400(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$OneHandMode;Z)V

    .line 898
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # setter for: Lcom/android/keyguard/KeyguardPatternView;->mLeftPressed:Z
    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardPatternView;->access$502(Lcom/android/keyguard/KeyguardPatternView;Z)Z

    .line 899
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3700(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_operation_left_is_pressed"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_9

    .line 890
    :pswitch_data_42
    .packed-switch 0x7f0b00ac
        :pswitch_a
        :pswitch_26
    .end packed-switch
.end method
