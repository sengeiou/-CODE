//package utils;
//
//import org.codehaus.jackson.JsonGenerator;
//import org.codehaus.jackson.map.JsonSerializer;
//import org.codehaus.jackson.map.ObjectMapper;
//import org.codehaus.jackson.map.SerializerProvider;
//import org.codehaus.jackson.map.ser.CustomSerializerFactory;
//
//import java.io.IOException;
//import java.text.SimpleDateFormat;
//import java.util.Date;
//
///**
// * Created by mylove on 2017/1/15.
// */
////@Component(value = "customObjectMapper")
//public class CustomJsonDateConverter extends ObjectMapper {
//    public CustomJsonDateConverter() {
//        CustomSerializerFactory factory = new CustomSerializerFactory();
//        factory.addGenericMapping(Date.class, new JsonSerializer<Date>() {
//            @Override
//            public void serialize(Date value,
//                                  JsonGenerator jsonGenerator,
//                                  SerializerProvider provider)
//                    throws IOException {
//                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//                jsonGenerator.writeString(sdf.format(value));
//            }
//        });
//        this.setSerializerFactory(factory);
//    }
//}
