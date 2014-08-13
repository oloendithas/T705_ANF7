.class final Lcom/sec/android/app/dialertab/calllog/CallLogUtil$6;
.super Ljava/lang/Object;
.source "CallLogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->showDialog(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$not_show_again:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    .prologue
    .line 3053
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$6;->val$mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$6;->val$not_show_again:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3055
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$6;->val$mContext:Landroid/content/Context;

    const-string v3, "logslist_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3056
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3057
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "reject_popup"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$6;->val$not_show_again:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3058
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3059
    return-void
.end method
