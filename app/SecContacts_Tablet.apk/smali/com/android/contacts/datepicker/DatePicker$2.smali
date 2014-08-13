.class Lcom/android/contacts/datepicker/DatePicker$2;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/datepicker/DatePicker;


# direct methods
.method constructor <init>(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # getter for: Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$100(Lcom/android/contacts/datepicker/DatePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    add-int/lit8 p3, p3, -0x1

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iput p3, v0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    .line 206
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # invokes: Lcom/android/contacts/datepicker/DatePicker;->adjustMaxDay()V
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$200(Lcom/android/contacts/datepicker/DatePicker;)V

    .line 207
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # invokes: Lcom/android/contacts/datepicker/DatePicker;->notifyDateChanged()V
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$000(Lcom/android/contacts/datepicker/DatePicker;)V

    .line 208
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker;->updateDaySpinner()V

    .line 209
    return-void
.end method
