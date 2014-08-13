.class Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$2;
.super Ljava/lang/Object;
.source "DatePickerDialogWithLunar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;-><init>(Landroid/content/Context;ILcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;IIIZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$2;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 213
    :cond_0
    :goto_0
    return v2

    .line 205
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$2;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    # getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$100(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$2;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    # getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$100(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$2;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    # getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$100(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$2;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    # getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
    invoke-static {v1}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$000(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
