.class Landroid/text/method/SmileyPickerDialog$OptionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmileyPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/SmileyPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/method/SmileyPickerDialog;


# direct methods
.method public constructor <init>(Landroid/text/method/SmileyPickerDialog;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    iput-object p1, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    .line 194
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 196
    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .prologue
    .line 237
    const/16 v0, 0x14

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 244
    if-nez p1, :cond_17

    .line 245
    iget-object v1, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->mOptions:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/method/SmileyPickerDialog;->access$200(Landroid/text/method/SmileyPickerDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    invoke-virtual {v2, p1}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v2

    invoke-static {v1, p1, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    .line 256
    :goto_16
    return-object v1

    .line 247
    :cond_17
    const/4 v1, 0x7

    if-lt p1, v1, :cond_51

    const/16 v1, 0xb

    if-gt p1, v1, :cond_51

    .line 248
    add-int/lit8 v1, p1, -0x7

    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    iget-object v3, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->prePosition3:I
    invoke-static {v3}, Landroid/text/method/SmileyPickerDialog;->access$400(Landroid/text/method/SmileyPickerDialog;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1b

    .line 254
    .local v0, "newPosition":I
    :goto_31
    iget-object v1, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # setter for: Landroid/text/method/SmileyPickerDialog;->prePosition3:I
    invoke-static {v1, v0}, Landroid/text/method/SmileyPickerDialog;->access$402(Landroid/text/method/SmileyPickerDialog;I)I

    .line 256
    iget-object v1, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->mOptions:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/method/SmileyPickerDialog;->access$200(Landroid/text/method/SmileyPickerDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    iget-object v3, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->prePosition3:I
    invoke-static {v3}, Landroid/text/method/SmileyPickerDialog;->access$400(Landroid/text/method/SmileyPickerDialog;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v2

    invoke-static {v1, v0, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    .line 249
    .end local v0    # "newPosition":I
    :cond_51
    const/16 v1, 0xc

    if-ne p1, v1, :cond_58

    .line 250
    const/16 v0, 0x30

    .restart local v0    # "newPosition":I
    goto :goto_31

    .line 252
    .end local v0    # "newPosition":I
    :cond_58
    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    iget-object v3, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->prePosition3:I
    invoke-static {v3}, Landroid/text/method/SmileyPickerDialog;->access$400(Landroid/text/method/SmileyPickerDialog;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x4

    .restart local v0    # "newPosition":I
    goto :goto_31
.end method

.method public final getItemId(I)J
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 267
    .local v0, "newPosition":I
    if-nez p1, :cond_5

    .line 280
    :goto_3
    int-to-long v1, v0

    return-wide v1

    .line 270
    :cond_5
    const/4 v1, 0x7

    if-lt p1, v1, :cond_25

    const/16 v1, 0xb

    if-gt p1, v1, :cond_25

    .line 271
    add-int/lit8 v1, p1, -0x7

    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    iget-object v3, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->prePosition4:I
    invoke-static {v3}, Landroid/text/method/SmileyPickerDialog;->access$500(Landroid/text/method/SmileyPickerDialog;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1b

    .line 277
    :goto_1f
    iget-object v1, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # setter for: Landroid/text/method/SmileyPickerDialog;->prePosition4:I
    invoke-static {v1, v0}, Landroid/text/method/SmileyPickerDialog;->access$502(Landroid/text/method/SmileyPickerDialog;I)I

    goto :goto_3

    .line 272
    :cond_25
    const/16 v1, 0xc

    if-ne p1, v1, :cond_2c

    .line 273
    const/16 v0, 0x30

    goto :goto_1f

    .line 275
    :cond_2c
    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    iget-object v3, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->prePosition4:I
    invoke-static {v3}, Landroid/text/method/SmileyPickerDialog;->access$500(Landroid/text/method/SmileyPickerDialog;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x4

    goto :goto_1f
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 203
    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Landroid/text/method/SmileyPickerDialog;->access$100(Landroid/text/method/SmileyPickerDialog;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109003f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 209
    .local v0, "b":Landroid/widget/Button;
    if-nez p1, :cond_2b

    .line 212
    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->mOptions:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/method/SmileyPickerDialog;->access$200(Landroid/text/method/SmileyPickerDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget-object v3, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    invoke-virtual {v3, p1}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v3

    invoke-virtual {v0, v2, p1, v3}, Landroid/widget/TextView;->setText([CII)V

    .line 230
    :goto_25
    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    return-object v0

    .line 217
    :cond_2b
    const/4 v2, 0x7

    if-lt p1, v2, :cond_5e

    const/16 v2, 0xb

    if-gt p1, v2, :cond_5e

    .line 218
    add-int/lit8 v2, p1, -0x7

    iget-object v3, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    iget-object v4, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->prePosition2:I
    invoke-static {v4}, Landroid/text/method/SmileyPickerDialog;->access$300(Landroid/text/method/SmileyPickerDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1b

    .line 225
    .local v1, "newPosition":I
    :goto_45
    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->mOptions:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/method/SmileyPickerDialog;->access$200(Landroid/text/method/SmileyPickerDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget-object v3, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    invoke-virtual {v3, v1}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/TextView;->setText([CII)V

    .line 227
    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # setter for: Landroid/text/method/SmileyPickerDialog;->prePosition2:I
    invoke-static {v2, v1}, Landroid/text/method/SmileyPickerDialog;->access$302(Landroid/text/method/SmileyPickerDialog;I)I

    goto :goto_25

    .line 219
    .end local v1    # "newPosition":I
    :cond_5e
    const/16 v2, 0xc

    if-ne p1, v2, :cond_65

    .line 220
    const/16 v1, 0x30

    .restart local v1    # "newPosition":I
    goto :goto_45

    .line 222
    .end local v1    # "newPosition":I
    :cond_65
    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    iget-object v4, p0, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmileyPickerDialog;

    # getter for: Landroid/text/method/SmileyPickerDialog;->prePosition2:I
    invoke-static {v4}, Landroid/text/method/SmileyPickerDialog;->access$300(Landroid/text/method/SmileyPickerDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x4

    .restart local v1    # "newPosition":I
    goto :goto_45
.end method
