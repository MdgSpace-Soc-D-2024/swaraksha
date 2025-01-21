import androidx.compose.runtime.*
import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.*
import androidx.compose.foundation.text.*
import androidx.compose.material.*
import androidx.compose.ui.*
import androidx.compose.ui.draw.*
import androidx.compose.ui.graphics.*
import androidx.compose.ui.text.font.*
import androidx.compose.ui.unit.*
import androidx.compose.ui.text.*
import androidx.compose.ui.layout.*
import com.skydoves.landscapist.*
import com.skydoves.landscapist.coil3.*
@Composable
fun SafetyLessons() {
    val textField1 = remember { mutableStateOf("") }
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .fillMaxHeight()
            .background(
                color = Color(0xFFFFFFFF),
            )
    ){
        Column(
            modifier = Modifier
                .clip(shape = RoundedCornerShape(30.dp))
                .fillMaxWidth()
                .weight(1f)
                .background(
                    color = Color(0xFFFFDFDF),
                    shape = RoundedCornerShape(30.dp)
                )
                .verticalScroll(rememberScrollState())
        ){
            Column(
                modifier = Modifier
                    .padding(bottom = 13.dp,)
                    .fillMaxWidth()
            ){
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(10.dp))
                        .fillMaxWidth()
                        .background(
                            color = Color(0xFFED5AB3),
                            shape = RoundedCornerShape(10.dp)
                        )
                        .padding(horizontal = 29.dp,)
                ){
                    CoilImage(
                        imageModel = {"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/5dfb8ea7-917c-46e4-ad87-5745d7ec8a3f"},
                        imageOptions = ImageOptions(contentScale = ContentScale.Crop),
                        modifier = Modifier
                            .padding(end = 21.dp,)
                            .width(30.dp)
                            .height(30.dp)
                    )
                    TextFieldView(
                        placeholder = "SAFETY MODULES",
                        value = textField1.value,
                        onValueChange = { newText -> textField1.value = newText },
                        textStyle = TextStyle(
                            color = Color(0xFFF4EEEE),
                            fontSize = 24.sp,
                        ),
                        modifier = Modifier
                            .weight(1f)
                            .padding(vertical = 32.dp,)
                    )
                }
                CoilImage(
                    imageModel = {"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/b43cf069-45b7-4f0a-9fe0-31272e5452d0"},
                    imageOptions = ImageOptions(contentScale = ContentScale.Crop),
                    modifier = Modifier
                        .height(95.dp)
                        .fillMaxWidth()
                )
            }
            Row(
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier
                    .padding(bottom = 14.dp,start = 13.dp,end = 13.dp,)
                    .fillMaxWidth()
            ){
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
            }
            Row(
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier
                    .padding(bottom = 14.dp,start = 13.dp,end = 13.dp,)
                    .fillMaxWidth()
            ){
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
            }
            Row(
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier
                    .padding(bottom = 14.dp,start = 13.dp,end = 13.dp,)
                    .fillMaxWidth()
            ){
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
            }
            Row(
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier
                    .padding(bottom = 14.dp,start = 13.dp,end = 13.dp,)
                    .fillMaxWidth()
            ){
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
            }
            Row(
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier
                    .padding(bottom = 14.dp,start = 13.dp,end = 13.dp,)
                    .fillMaxWidth()
            ){
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
            }
            Row(
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier
                    .padding(bottom = 14.dp,start = 13.dp,end = 13.dp,)
                    .fillMaxWidth()
            ){
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
            }
            Row(
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier
                    .padding(bottom = 14.dp,start = 13.dp,end = 13.dp,)
                    .fillMaxWidth()
            ){
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
            }
            Row(
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier
                    .padding(bottom = 14.dp,start = 13.dp,end = 13.dp,)
                    .fillMaxWidth()
            ){
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
            }
            Row(
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier
                    .padding(bottom = 14.dp,start = 13.dp,end = 13.dp,)
                    .fillMaxWidth()
            ){
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
            }
            Row(
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier
                    .padding(bottom = 14.dp,start = 13.dp,end = 13.dp,)
                    .fillMaxWidth()
            ){
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
            }
            Row(
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier
                    .padding(horizontal = 13.dp,)
                    .fillMaxWidth()
            ){
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
                Column(
                    modifier = Modifier
                        .clip(shape = RoundedCornerShape(15.dp))
                        .width(184.dp)
                        .height(139.dp)
                        .background(
                            color = Color(0x99D63484),
                            shape = RoundedCornerShape(15.dp)
                        )
                        .shadow(
                            elevation = 4.dp,
                            spotColor = Color(0x40000000),
                        )
                ){
                }
            }
        }
    }
}