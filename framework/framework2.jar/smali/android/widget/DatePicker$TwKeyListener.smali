.class Landroid/widget/DatePicker$TwKeyListener;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwKeyListener"
.end annotation


# instance fields
.field private mNext:I

.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method public constructor <init>(Landroid/widget/DatePicker;I)V
    .registers 3
    .param p2, "next_id"    # I

    .prologue
    .line 1352
    iput-object p1, p0, Landroid/widget/DatePicker$TwKeyListener;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1353
    iput p2, p0, Landroid/widget/DatePicker$TwKeyListener;->mNext:I

    .line 1354
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1357
    iget-object v2, p0, Landroid/widget/DatePicker$TwKeyListener;->this$0:Landroid/widget/DatePicker;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/widget/DatePicker;->access$2000(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1358
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_12

    .line 1370
    :goto_11
    return v0

    .line 1360
    :cond_12
    sparse-switch p2, :sswitch_data_18

    goto :goto_11

    :sswitch_16
    move v0, v1

    .line 1368
    goto :goto_11

    .line 1360
    :sswitch_data_18
    .sparse-switch
        0x17 -> :sswitch_16
        0x3d -> :sswitch_16
        0x42 -> :sswitch_16
    .end sparse-switch
.end method
