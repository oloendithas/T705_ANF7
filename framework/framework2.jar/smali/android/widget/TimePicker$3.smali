.class Landroid/widget/TimePicker$3;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method constructor <init>(Landroid/widget/TimePicker;)V
    .registers 2

    .prologue
    .line 227
    iput-object p1, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .registers 5
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 250
    iget-object v0, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    # invokes: Landroid/widget/TimePicker;->onTimeChanged()V
    invoke-static {v0}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)V

    .line 251
    return-void
.end method
