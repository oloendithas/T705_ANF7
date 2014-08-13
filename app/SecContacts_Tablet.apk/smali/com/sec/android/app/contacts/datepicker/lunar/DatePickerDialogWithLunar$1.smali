.class Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;
.super Ljava/lang/Object;
.source "DatePickerDialogWithLunar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 147
    iput-object p1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 150
    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 151
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    # getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
    invoke-static {v1}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$000(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    # getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
    invoke-static {v1}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$000(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearFocus()V

    .line 155
    return-void
.end method
